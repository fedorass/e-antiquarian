import { Material } from './material.model';
import { Denomination } from './denomination.model';

export interface NumismaticsMonetaryPeriod {

    uuid: string;
    startYear: number;
    endYear?: number;
    periodGroup?: string;
    currency: string;
    materials: Material[];  
    denominations: Denomination[];
}