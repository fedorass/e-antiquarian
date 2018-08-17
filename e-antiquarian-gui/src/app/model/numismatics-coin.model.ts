import { Material } from "./material.model";
import { Denomination } from "./denomination.model";

export interface NumismaticsCoin {
    
    uuid: string;
    issueDate: string;
    coinMaterial: Material;
    coinDenomination: Denomination;
}