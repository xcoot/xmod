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

    .line 3
    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraAppClassifier$1;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

    .line 8
    new-instance v0, Lcom/android/server/chimera/ChimeraAppClassifier$2;

    .line 10
    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraAppClassifier$2;-><init>()V

    .line 13
    sput-object v0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_EXCEPT_FOR_PMM_TRIGGER:Ljava/util/List;

    .line 15
    new-instance v0, Lcom/android/server/chimera/ChimeraAppClassifier$3;

    .line 17
    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraAppClassifier$3;-><init>()V

    .line 20
    sput-object v0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_WHILE_DOCKING:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    sput-object v0, Lcom/android/server/chimera/ChimeraAppClassifier;->mProtectOnBubDisabledList:Ljava/util/List;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    .line 18
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 20
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mLongLiveApps:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 31
    return-void
.end method
