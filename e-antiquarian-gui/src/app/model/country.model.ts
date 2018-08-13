import {Table, Column, Model, AutoIncrement, Unique, NotNull, PrimaryKey, AllowNull } from 'sequelize-typescript';

@Table
class Country extends Model<Country> {

    @Column
    @AutoIncrement
    @PrimaryKey
    id: number;

    @Column
    @Unique
    @AllowNull(false)
    uiId: string;

    @Column
    @Unique
    @AllowNull(false)
    name: string;

    @Column
    @Unique
    @AllowNull(false)
    isoCode: string;    
}