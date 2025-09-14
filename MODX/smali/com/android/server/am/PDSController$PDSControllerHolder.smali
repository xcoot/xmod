.class public abstract Lcom/android/server/am/PDSController$PDSControllerHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/PDSController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/am/PDSController;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/android/server/am/PDSController;->mIsPDSEnable:Z

    .line 9
    iput-boolean v1, v0, Lcom/android/server/am/PDSController;->mScreenOn:Z

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v1, v0, Lcom/android/server/am/PDSController;->mPDSTargetlist:Ljava/util/List;

    .line 18
    new-instance v1, Lcom/android/server/am/pds/PDSPkgMap;

    .line 20
    invoke-direct {v1}, Lcom/android/server/am/pds/PDSPkgMap;-><init>()V

    .line 23
    iput-object v1, v0, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 25
    new-instance v1, Lcom/android/server/am/pds/PDSPkgMap;

    .line 27
    invoke-direct {v1}, Lcom/android/server/am/pds/PDSPkgMap;-><init>()V

    .line 30
    iput-object v1, v0, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 32
    const/4 v1, 0x0

    .line 33
    iput-object v1, v0, Lcom/android/server/am/PDSController;->udsPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 35
    iput-object v1, v0, Lcom/android/server/am/PDSController;->mpsmPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 37
    sput-object v0, Lcom/android/server/am/PDSController$PDSControllerHolder;->INSTANCE:Lcom/android/server/am/PDSController;

    .line 39
    return-void
.end method
