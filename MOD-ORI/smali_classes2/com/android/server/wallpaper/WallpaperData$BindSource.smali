.class final enum Lcom/android/server/wallpaper/WallpaperData$BindSource;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum CONNECTION_TRY_TO_REBIND:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum CONNECT_LOCKED:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum INITIALIZE_FALLBACK:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum PACKAGE_UPDATE_FINISHED:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum RESTORE_SETTINGS_LIVE_FAILURE:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum RESTORE_SETTINGS_LIVE_SUCCESS:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum RESTORE_SETTINGS_STATIC:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum SET_LIVE:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum SET_LIVE_TO_CLEAR:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum SET_STATIC:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum SWITCH_WALLPAPER_FAILURE:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum SWITCH_WALLPAPER_UNLOCK_USER:Lcom/android/server/wallpaper/WallpaperData$BindSource;

.field public static final enum UNKNOWN:Lcom/android/server/wallpaper/WallpaperData$BindSource;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->UNKNOWN:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 12
    .line 13
    const-string v2, "CONNECT_LOCKED"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/wallpaper/WallpaperData$BindSource;->CONNECT_LOCKED:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 22
    .line 23
    const-string v3, "CONNECTION_TRY_TO_REBIND"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/server/wallpaper/WallpaperData$BindSource;->CONNECTION_TRY_TO_REBIND:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 30
    .line 31
    new-instance v3, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 32
    .line 33
    const-string v4, "INITIALIZE_FALLBACK"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/android/server/wallpaper/WallpaperData$BindSource;->INITIALIZE_FALLBACK:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 40
    .line 41
    new-instance v4, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 42
    .line 43
    const-string v5, "PACKAGE_UPDATE_FINISHED"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/android/server/wallpaper/WallpaperData$BindSource;->PACKAGE_UPDATE_FINISHED:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 50
    .line 51
    new-instance v5, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 52
    .line 53
    const-string v6, "RESTORE_SETTINGS_LIVE_FAILURE"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lcom/android/server/wallpaper/WallpaperData$BindSource;->RESTORE_SETTINGS_LIVE_FAILURE:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 60
    .line 61
    new-instance v6, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 62
    .line 63
    const-string v7, "RESTORE_SETTINGS_LIVE_SUCCESS"

    .line 64
    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v6, Lcom/android/server/wallpaper/WallpaperData$BindSource;->RESTORE_SETTINGS_LIVE_SUCCESS:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 70
    .line 71
    new-instance v7, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 72
    .line 73
    const-string v8, "RESTORE_SETTINGS_STATIC"

    .line 74
    .line 75
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v7, Lcom/android/server/wallpaper/WallpaperData$BindSource;->RESTORE_SETTINGS_STATIC:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 80
    .line 81
    new-instance v8, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 82
    .line 83
    const-string v9, "SET_LIVE"

    .line 84
    .line 85
    const/16 v10, 0x8

    .line 86
    .line 87
    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v8, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_LIVE:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 91
    .line 92
    new-instance v9, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 93
    .line 94
    const-string v10, "SET_LIVE_TO_CLEAR"

    .line 95
    .line 96
    const/16 v11, 0x9

    .line 97
    .line 98
    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v9, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_LIVE_TO_CLEAR:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 102
    .line 103
    new-instance v10, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 104
    .line 105
    const-string v11, "SET_STATIC"

    .line 106
    .line 107
    const/16 v12, 0xa

    .line 108
    .line 109
    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v10, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_STATIC:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 113
    .line 114
    new-instance v11, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 115
    .line 116
    const-string v12, "SWITCH_WALLPAPER_FAILURE"

    .line 117
    .line 118
    const/16 v13, 0xb

    .line 119
    .line 120
    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v11, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SWITCH_WALLPAPER_FAILURE:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 124
    .line 125
    new-instance v12, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 126
    .line 127
    const-string v13, "SWITCH_WALLPAPER_SWITCH_USER"

    .line 128
    .line 129
    const/16 v14, 0xc

    .line 130
    .line 131
    invoke-direct {v12, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    new-instance v13, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 135
    .line 136
    const-string v14, "SWITCH_WALLPAPER_UNLOCK_USER"

    .line 137
    .line 138
    const/16 v15, 0xd

    .line 139
    .line 140
    invoke-direct {v13, v14, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    sput-object v13, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SWITCH_WALLPAPER_UNLOCK_USER:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 144
    .line 145
    filled-new-array/range {v0 .. v13}, [Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sput-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->$VALUES:[Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 150
    .line 151
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wallpaper/WallpaperData$BindSource;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/wallpaper/WallpaperData$BindSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->$VALUES:[Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/wallpaper/WallpaperData$BindSource;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 8
    .line 9
    return-object v0
.end method
