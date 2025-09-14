.class public final Lcom/android/server/chimera/ChimeraAppClassifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PROTECTED_PACKAGES_EXCEPT_FOR_PMM_TRIGGER:Ljava/util/List;

.field public static final PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

.field public static final PROTECTED_PACKAGES_WHILE_DOCKING:Ljava/util/List;

.field public static final mProtectOnBubDisabledList:Ljava/util/List;


# instance fields
.field public final mBluetoothUsingUidList:Ljava/util/List;

.field public final mLongLiveApps:Ljava/util/Map;

.field public final mPackageTypeMap:Ljava/util/Map;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/chimera/ChimeraAppClassifier$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraAppClassifier$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Lcom/android/server/chimera/ChimeraAppClassifier$2;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraAppClassifier$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_EXCEPT_FOR_PMM_TRIGGER:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Lcom/android/server/chimera/ChimeraAppClassifier$3;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraAppClassifier$3;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_WHILE_DOCKING:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/android/server/chimera/ChimeraAppClassifier;->mProtectOnBubDisabledList:Ljava/util/List;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    .line 17
    .line 18
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mLongLiveApps:Ljava/util/Map;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 30
    .line 31
    return-void
.end method
