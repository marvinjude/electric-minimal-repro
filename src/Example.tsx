import { useEffect, useState } from "react";

import { makeElectricContext, useLiveQuery } from "electric-sql/react";
import { genUUID, uniqueTabId } from "electric-sql/util";
import { ElectricDatabase, electrify } from "electric-sql/wa-sqlite";

import { authToken } from "./auth";
import { DEBUG_MODE, ELECTRIC_URL } from "./config";
import { Electric, schema, Srts as Srt } from "./generated/client";

import "./Example.css";

const { ElectricProvider, useElectric } = makeElectricContext<Electric>();

export const Example = () => {
  const [electric, setElectric] = useState<Electric>();

  useEffect(() => {
    let isMounted = true;

    const init = async () => {
      const config = {
        auth: {
          token: authToken(),
        },
        debug: DEBUG_MODE,
        url: ELECTRIC_URL,
      };

      const { tabId } = uniqueTabId();
      const tabScopedDbName = `electric-${tabId}.db`;

      const conn = await ElectricDatabase.init(tabScopedDbName, "");
      console.log({ conn, schema });
      const electric = await electrify(conn, schema, config);
      console.log({ electric });

      if (!isMounted) {
        return;
      }

      setElectric(electric);
    };

    init();

    return () => {
      isMounted = false;
    };
  }, []);

  if (electric === undefined) {
    return null;
  }

  return (
    <ElectricProvider db={electric}>
      <ExampleComponent />
    </ElectricProvider>
  );
};

const ExampleComponent = () => {
  const { db } = useElectric()!;
  const { results } = useLiveQuery(db.srts.liveMany());

  useEffect(() => {
    const syncItems = async () => {
      // Resolves when the shape subscription has been established.
      const shape = await db.srts.sync();

      // Resolves when the data has been synced into the local database.
      await shape.synced;
    };

    syncItems();
  }, []);

  const srts: Srt[] = results ?? [];

  console.log({ srts });

  return (
    <div>
      {srts.map((item: Srt, index: number) => (
        <p key={index} className="item">
          {JSON.stringify(item)}
        </p>
      ))}
    </div>
  );
};
