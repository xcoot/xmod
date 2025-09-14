.class public final Lcom/android/server/ibs/IntelligentBatterySaverGather;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplayListener:Lcom/android/server/ibs/IntelligentBatterySaverGather$1;

.field public mFilter:Landroid/content/IntentFilter;

.field public final mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

.field public mReceiver:Lcom/android/server/ibs/IntelligentBatterySaverGather$IntelligentBatterySaverGatherReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ibs/IntelligentBatterySaverService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;

    .line 6
    invoke-direct {p1, p0}, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;)V

    .line 9
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mDisplayListener:Lcom/android/server/ibs/IntelligentBatterySaverGather$1;

    .line 11
    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 13
    return-void
.end method
