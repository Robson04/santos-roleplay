enum e_PlayerData
{
	//CacheID:
	Cache:CacheID,

	//Timers unix;
	tunix_interpolate,
	tunix_fightend,
	tunix_antiflood,
	tunix_ico_car,
	tunix_pfreeze,

	//Interpolate system;
	bool:IsShowInterPolate,
	LastInterPolateIndex,

	//TextInfo;
	bool:IsTextInfoShow,
    bool:IsTimeTextInfoShow,
    PlayerText:CurrentTextInfoID,
    TextInfoSeconds,

	bool:IsLogged,
	bool:IsLoggedSpawn,
	Text3D:TagStatus,

    Text3D:OverHeadTag,
    OverHeadSeconds,

	//Damage system;
	bool:IsFighting,

	//TeamInfo;
	bool:TeamDuty,

    //Description;
    bool:IsUseDescription,
    Text3D:DescriptionTag,

	//BWInfo;
	bool:IsInBW,
	BW_Minutes,
	BW_Seconds,
	BW_Weapon,
	bool:IsDeath,

	//AntiFlood;
	bool:AntiFlood,

	//LastPM;
	LastPMID,

	//Animations;
	bool:IsAnimActivite,
	AnimIndex,

	//GangZones,
	EditGangZoneIndex,

	//Doors;
	GetDoorSlot,
    GetDoorUID,
	EditDoorIndex,
	bool:IsInDoor,

	bool:IsEditingYardage,
	DoorAreaStep,

	//Objects;
	bool:IsEditingObject,
	bool:IsMovingObject,
	EditingObjectID,
	Float:ObjectBackupPos[6],
	ObjPosChange,
	GZSlotEditObjectID,

    //Mask;
    bool:IsUseMask,
    MaskNickName[MAX_PLAYER_NAME],

	UID,
	NickName[MAX_PLAYER_NAME],
	NameRP[MAX_PLAYER_NAME],
	Password[129],
	PasswordAttemps,
	Gender,
	Variety,
	BornDate,
	CreateDate[20],
	SkinID,
	Money,
	Score,
	VirtualWorld,
	InteriorID,
	Float:Health,
	RankLevel,
	Online_Hours,
	Online_Minutes,
	Online_Seconds,
	Float:LastX,
	Float:LastY,
	Float:LastZ,
	Float:LastR,

	//Options characters;
	bool:Options_Freeze,
	bool:Options_AutoDuty,
	bool:Options_TogPM,
	bool:Options_TokenPM,
	GenerateToken[16],

	//Vehicles;
	SpawnedVehicles,
	bool:IsStartingEngine,
	bool:CarBelt,
	Float:CourseTraveled,

	//Skills;
	WeaponsSkill[12],

    //Deals;
    bool:IsInDeal,
    DealType,
    DealOfferUID,
    DealReceiverUID,
    DealItemUID,
    DealItemCost,
    DealDoorUID,
    DealItemAmount,

    //Items;
    SelectedItemSlot,
    SelectedItemUID,

    //Groups;
    bool:IsGroupListOpen,
    bool:IsInDuty,
    DutyPlayerGroupSlot,
    DutyGroupUID,

    //Premium;
    PremiumUnix,

    //Phone calls;
    bool:IsMobileCall,
    bool:IsMobileTalk,
    CallerUID,
    AnwserUID,
    UnPairSec,
    TalkTime,
    PhoneItemUID,
    SimCardSlot,

    //Radio;
    bool:IsPlayerHaveRadioSet,

    //Weapon;
    bool:IsHaveWeapon,
    WeaponItemSlot,
    bool:IsWeaponHide,

    //Packages;
    bool:IsCourier,
    bool:IsHavePackage,
    PackageIndex,

    //Actions (ME);
    bool:IsPerformedAction,
    PerformedActionTime
};
new PlayerCache[MAX_PLAYERS][e_PlayerData];

enum E_PLAYER_BANK
{
	Cache:BankCache,
	CashAmount,
	DebtAmount
};
new PlayerBankCache[MAX_PLAYERS][E_PLAYER_BANK];

enum e_Anims
{
	UID,
	Command[16],
	AnimLib[32],
	AnimName[32],
	Float:fDelta,
	bool:Loop,
	bool:LockX,
	bool:LockY,
	bool:Freeze,
	bool:ForceSync,
	bool:MustCancel,
	Time
};
new AnimCache[MAX_ANIMS][e_Anims];

enum e_GangZones
{
	UID,
	Name[32],
	Type,
	Float:MinX,
	Float:MinY,
	Float:MaxX,
	Float:MaxY,
	GZID,

	ObjectsList,
    ObjectsCreate,

	OwnerUID,
	GroupUID,
	MeterCost,
	bool:IsGasStation
};
new GangZoneCache[MAX_GANG_ZONES][e_GangZones];

enum e_Doors
{
	UID,
	Name[24],

	Type,
	OwnerUID,
	GroupUID,
	PickupModel,

	Float:Entry_X,
	Float:Entry_Y,
	Float:Entry_Z,
    Float:Entry_R,

	Float:Exit_X,
	Float:Exit_Y,
	Float:Exit_Z,
    Float:Exit_R,

	PID,
	MID,
	AreaID,
	PlayersList,
	YardageCount,
	GangZoneUID,

	bool:IsMetersSet,
	bool:IsDoorSet,
	bool:IsLocked,
	bool:MailBox,
    bool:VehicleDoorTP,

	Float:Area_MinX,
	Float:Area_MinY,
	Float:Area_MinZ,

	Float:Area_MaxX,
	Float:Area_MaxY,
	Float:Area_MaxZ,

	ObjectsList,
    ObjectsCreate,
    LastCreatedObjectUID,
    LastCreatedObjectID,
	TaxUnix
};
new DoorsCache[MAX_DOORS][e_Doors];

enum E_VEHICLES_PLAYER
{
	UID,
	OwnerUID,
	Modelid,
	Float:Course,
	Float:Fuel,
	Float:Health,
	Float:VehPos[4],
	Color[2],
	NumberPlate[32],
    VirtualWorld,
    Interior,

	bool:IsRegister,
	bool:IsDamaged,
	bool:Immobilizer,
	bool:Alarm,
	bool:Radio,

	bool:IsSpawned,
	SAMPID,

	//Damage Status;
	Damage_Panels,
	Damage_Doors,
	Damage_Lights,
	Damage_Tires,

	//Modes;
	MODE_SPOILER,
	MODE_HOOD,
	MODE_ROOF,
	MODE_SIDESKIRT,
	MODE_LAMPS,
	MODE_NITRO,
	MODE_EXHAUST,
	MODE_WHEELS,
	MODE_STEREO,
	MODE_HYDRAULICS,
	MODE_FRONT_BUMPER,
	MODE_REAR_BUMPER,
	MODE_VENT_RIGHT,
	MODE_VENT_LEFT

};
new PlayerVehicleCache[MAX_PLAYERS][MAX_PLAYER_VEHICLES][E_VEHICLES_PLAYER];

enum E_VEHICLES
{
	UID,
	OwnerUID,
	Modelid,
	Float:Course,
	Float:Fuel,
	Color[2],
	NumberPlate[32],
	bool:IsRegister,
	bool:IsDamaged,

	bool:Immobilizer,
	bool:Alarm,
	bool:Radio,

    bool:IsUseDescription,
    Text3D:DescriptionTag,

	//Modes;
	MODE_STEREO
};
new VehicleCache[MAX_VEHICLES][E_VEHICLES];

enum E_PLAYER_ITEM
{
	UID,
	Name[64],
	Type,
	Value1,
	Value2,
	Value3,
	Value4s[64],

	bool:IsUsing
};
new PlayerItemCache[MAX_PLAYERS][MAX_PLAYER_ITEMS][E_PLAYER_ITEM];

enum E_DELETE_WORLD_OBJ
{
	UID,
	Modelid,
	Float:posX,
	Float:posY,
	Float:posZ,
	Float:Radius
};
new RemoveObjectsCache[MAX_OBJECTS][E_DELETE_WORLD_OBJ];

enum E_DROP_ITEM
{
	UID,
	Name[64],
	Type,
	Value1,
	Value2,
	Value3,
	Value4s[64],

	Float:posX,
	Float:posY,
	Float:posZ,
    VirtualWorld
};
new DropItemCache[MAX_DROP_ITEMS][E_DROP_ITEM];

enum E_GROUP
{
	UID,
	OwnerUID,
	Name[32],
	Type,
	Cash,
	bool:ChatOOC,
	bool:ChatIC,

	Color,
    DefaultPermissions
};
new GroupCache[MAX_GROUPS][E_GROUP];

enum E_PLAYER_GROUPS
{
	rowUID,
	GroupUID,
	Permissions,
    PayOff
};
new PlayerGroupCache[MAX_PLAYERS][MAX_PLAYER_GROUPS][E_PLAYER_GROUPS];

enum E_SIMCARD
{
	UID,
	ItemUID,
	Number[64],
	Credits
}
new SimCardCache[MAX_SIMCARDS][E_SIMCARD];

enum E_CONTACTS_SIMCARD
{
    rowUID,
    Number[64],
    ContactText[64]
};
new SimContactCache[MAX_SIMCARDS][MAX_SIMCARD_CONTACTS][E_CONTACTS_SIMCARD];

enum E_WEAPON_STATES
{
    UID,
    ForWeapon,
    Modelid,
    Bone,
    Float:PosX,
    Float:PosY,
    Float:PosZ,
    Float:RotX,
    Float:RotY,
    Float:RotZ,
    Float:ScaleX,
    Float:ScaleY,
    Float:ScaleZ,
    MaterialColor1,
    MaterialColor2
};
new WeaponState[MAX_WEAPON_STATE][E_WEAPON_STATES];

enum E_DEALER_ITEMS
{
    UID,
    Name[64],
    Type,
    Value1,
    Value2,
    Value3,
    Value4s[64],
    DealerCost,
    ForGroupType
};
new DealerItemCache[MAX_DEALER_ITEMS][E_DEALER_ITEMS];

enum E_GROUP_ITEMS
{
    UID,
    GroupUID,
    DealerItemUID
};
new GroupItemCache[MAX_GROUPS][MAX_GROUP_ITEMS][E_GROUP_ITEMS];

enum E_GROUP_ITEMS_TARIFF
{
    UID,
    DealerItemUID,
    ItemCost
};
new GroupTariffItemCache[MAX_GROUPS][MAX_GROUP_ITEMS][E_GROUP_ITEMS_TARIFF];

enum E_PLAYER_DESCRIPTION
{
    UID,
    Type,
    Text[128]
};
new PlayerDescriptionCache[MAX_PLAYERS][MAX_PLAYER_DESCRIPTIONS][E_PLAYER_DESCRIPTION];

enum E_PACKAGES
{
    UID,
    OrderGroupUID,
    OrderDoorUID,
    DealerItemUID,
    Float:posX,
    Float:posY,
    Float:posZ,

    bool:InDelivery,
    bool:ForPickup,
    LeadTime,
    bool:ForCrimeGroups,
    bool:IsIllegal,

    bool:IsDropped,
    Float:dropX,
    Float:dropY,
    Float:dropZ,

    PurchaserUID,
    PurchaserName[MAX_PLAYER_NAME],
    CourierID,
    CourierName[MAX_PLAYER_NAME]
};
new PackageCache[MAX_PACKAGES][E_PACKAGES];
