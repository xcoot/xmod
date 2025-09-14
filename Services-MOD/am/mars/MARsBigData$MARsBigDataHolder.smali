.class public abstract Lcom/android/server/am/mars/MARsBigData$MARsBigDataHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/MARsBigData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/am/mars/MARsBigData;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/android/server/am/mars/MARsBigData;->mHQM:Landroid/os/SemHqmManager;

    .line 9
    iput-object v1, v0, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    .line 11
    new-instance v1, Lcom/android/server/am/mars/MARsBigData$1;

    .line 13
    invoke-direct {v1, v0}, Lcom/android/server/am/mars/MARsBigData$1;-><init>(Lcom/android/server/am/mars/MARsBigData;)V

    .line 16
    iput-object v1, v0, Lcom/android/server/am/mars/MARsBigData;->mIntentReceiver:Lcom/android/server/am/mars/MARsBigData$1;

    .line 18
    sput-object v0, Lcom/android/server/am/mars/MARsBigData$MARsBigDataHolder;->INSTANCE:Lcom/android/server/am/mars/MARsBigData;

    .line 20
    return-void
.end method
