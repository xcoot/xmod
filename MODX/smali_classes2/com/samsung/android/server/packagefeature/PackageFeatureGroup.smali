.class public final enum Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum APP_CATEGORY_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum BROADCAST_RECEIVER_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum FOLDABLE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum REFRESH_RATE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum TEST_PACKAGE_FEATURE_GROUP:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;


# instance fields
.field public final mEnabled:Z

.field public final mName:Ljava/lang/String;

.field public final mRawResId:I

.field public final mUnformatted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 2
    .line 3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const v0, 0x110000b

    .line 8
    .line 9
    .line 10
    :goto_0
    move v2, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const v0, 0x110000a

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :goto_1
    const/4 v6, 0x0

    .line 17
    const-string v3, "FOLDABLE_PACKAGE_FEATURE"

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    const-string v4, "FoldablePackagePolicy"

    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 25
    .line 26
    .line 27
    sput-object v7, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->FOLDABLE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 28
    .line 29
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 30
    .line 31
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 32
    .line 33
    const/4 v14, 0x0

    .line 34
    const-string v11, "REFRESH_RATE_PACKAGE_FEATURE"

    .line 35
    .line 36
    const/4 v9, 0x1

    .line 37
    const-string v12, "RefreshRatePolicy"

    .line 38
    .line 39
    const v10, 0x110000c

    .line 40
    .line 41
    .line 42
    move-object v8, v0

    .line 43
    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->REFRESH_RATE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 47
    .line 48
    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 49
    .line 50
    const/16 v17, 0x0

    .line 51
    .line 52
    const-string v18, "BROADCAST_RECEIVER_FEATURE"

    .line 53
    .line 54
    const/16 v16, 0x2

    .line 55
    .line 56
    const/16 v20, 0x1

    .line 57
    .line 58
    const-string v19, "BROADCAST_RECEIVER_ALLOW_LIST"

    .line 59
    .line 60
    const/16 v21, 0x1

    .line 61
    .line 62
    move-object v15, v1

    .line 63
    invoke-direct/range {v15 .. v21}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 64
    .line 65
    .line 66
    sput-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->BROADCAST_RECEIVER_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 67
    .line 68
    new-instance v2, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 69
    .line 70
    const/4 v10, 0x0

    .line 71
    const-string v11, "APP_CATEGORY_FEATURE"

    .line 72
    .line 73
    const/4 v9, 0x3

    .line 74
    const/4 v13, 0x1

    .line 75
    const-string v12, "appcategory"

    .line 76
    .line 77
    const/4 v14, 0x1

    .line 78
    move-object v8, v2

    .line 79
    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 80
    .line 81
    .line 82
    sput-object v2, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->APP_CATEGORY_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 83
    .line 84
    new-instance v3, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 85
    .line 86
    const/16 v21, 0x0

    .line 87
    .line 88
    const-string v18, "TEST_PACKAGE_FEATURE_GROUP"

    .line 89
    .line 90
    const/16 v16, 0x4

    .line 91
    .line 92
    const/16 v20, 0x0

    .line 93
    .line 94
    const-string v19, "TestPackageFeatureGroup"

    .line 95
    .line 96
    const/16 v17, 0x0

    .line 97
    .line 98
    move-object v15, v3

    .line 99
    invoke-direct/range {v15 .. v21}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 100
    .line 101
    .line 102
    sput-object v3, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->TEST_PACKAGE_FEATURE_GROUP:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 103
    .line 104
    filled-new-array {v7, v0, v1, v2, v3}, [Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 109
    .line 110
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p5, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mEnabled:Z

    .line 5
    .line 6
    iput-object p4, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 7
    .line 8
    iput p2, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mRawResId:I

    .line 9
    .line 10
    iput-boolean p6, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mUnformatted:Z

    .line 11
    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 8
    .line 9
    return-object v0
.end method
