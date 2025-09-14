.class public abstract Lcom/android/server/am/pds/PDSTrigger$PDSTriggerHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/pds/PDSTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/am/pds/PDSTrigger;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mReceiverRegistered:Z

    .line 9
    iput-boolean v1, v0, Lcom/android/server/am/pds/PDSTrigger;->isMpsmActive:Z

    .line 11
    iput-boolean v1, v0, Lcom/android/server/am/pds/PDSTrigger;->isUdsActive:Z

    .line 13
    iput-boolean v1, v0, Lcom/android/server/am/pds/PDSTrigger;->isInDuration:Z

    .line 15
    const-wide/16 v1, -0x1

    .line 17
    iput-wide v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mLastTimePolicyTrigger:J

    .line 19
    const-wide/32 v1, 0x493e0

    .line 22
    iput-wide v1, v0, Lcom/android/server/am/pds/PDSTrigger;->firstTrigger:J

    .line 24
    new-instance v1, Lcom/android/server/am/pds/PDSTrigger$1;

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, v0, v2}, Lcom/android/server/am/pds/PDSTrigger$1;-><init>(Lcom/android/server/am/pds/PDSTrigger;I)V

    .line 30
    iput-object v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mIntentReceiver:Lcom/android/server/am/pds/PDSTrigger$1;

    .line 32
    new-instance v1, Lcom/android/server/am/pds/PDSTrigger$1;

    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-direct {v1, v0, v2}, Lcom/android/server/am/pds/PDSTrigger$1;-><init>(Lcom/android/server/am/pds/PDSTrigger;I)V

    .line 38
    iput-object v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mPolicyIntentReceiver:Lcom/android/server/am/pds/PDSTrigger$1;

    .line 40
    new-instance v1, Lcom/android/server/am/pds/PDSTrigger$1;

    .line 42
    const/4 v2, 0x2

    .line 43
    invoke-direct {v1, v0, v2}, Lcom/android/server/am/pds/PDSTrigger$1;-><init>(Lcom/android/server/am/pds/PDSTrigger;I)V

    .line 46
    iput-object v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mPolicyUDSIntentReceiver:Lcom/android/server/am/pds/PDSTrigger$1;

    .line 48
    new-instance v1, Lcom/android/server/am/pds/PDSTrigger$1;

    .line 50
    const/4 v2, 0x3

    .line 51
    invoke-direct {v1, v0, v2}, Lcom/android/server/am/pds/PDSTrigger$1;-><init>(Lcom/android/server/am/pds/PDSTrigger;I)V

    .line 54
    iput-object v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mPolicyMPSMIntentReceiver:Lcom/android/server/am/pds/PDSTrigger$1;

    .line 56
    sput-object v0, Lcom/android/server/am/pds/PDSTrigger$PDSTriggerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSTrigger;

    .line 58
    return-void
.end method
