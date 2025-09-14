.class public abstract Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/MARsTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/am/MARsTrigger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/android/server/am/MARsTrigger;->mReceiverRegistered:Z

    .line 8
    .line 9
    iput-boolean v1, v0, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z

    .line 10
    .line 11
    iput-boolean v1, v0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiverRegistered:Z

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/am/MARsTrigger$1;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v0, v2}, Lcom/android/server/am/MARsTrigger$1;-><init>(Lcom/android/server/am/MARsTrigger;I)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lcom/android/server/am/MARsTrigger;->mIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 20
    .line 21
    new-instance v1, Lcom/android/server/am/MARsTrigger$1;

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-direct {v1, v0, v2}, Lcom/android/server/am/MARsTrigger$1;-><init>(Lcom/android/server/am/MARsTrigger;I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lcom/android/server/am/MARsTrigger;->mTriggerIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 28
    .line 29
    new-instance v1, Lcom/android/server/am/MARsTrigger$1;

    .line 30
    .line 31
    const/4 v2, 0x3

    .line 32
    invoke-direct {v1, v0, v2}, Lcom/android/server/am/MARsTrigger$1;-><init>(Lcom/android/server/am/MARsTrigger;I)V

    .line 33
    .line 34
    .line 35
    iput-object v1, v0, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 36
    .line 37
    new-instance v1, Lcom/android/server/am/MARsTrigger$1;

    .line 38
    .line 39
    const/4 v2, 0x4

    .line 40
    invoke-direct {v1, v0, v2}, Lcom/android/server/am/MARsTrigger$1;-><init>(Lcom/android/server/am/MARsTrigger;I)V

    .line 41
    .line 42
    .line 43
    iput-object v1, v0, Lcom/android/server/am/MARsTrigger;->mPolicySBikeIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 44
    .line 45
    new-instance v1, Lcom/android/server/am/MARsTrigger$5;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-direct {v1, v2}, Lcom/android/server/am/MARsTrigger$5;-><init>(I)V

    .line 49
    .line 50
    .line 51
    iput-object v1, v0, Lcom/android/server/am/MARsTrigger;->mTCPUReceiver:Lcom/android/server/am/MARsTrigger$5;

    .line 52
    .line 53
    new-instance v1, Lcom/android/server/am/MARsTrigger$1;

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v1, v0, v2}, Lcom/android/server/am/MARsTrigger$1;-><init>(Lcom/android/server/am/MARsTrigger;I)V

    .line 57
    .line 58
    .line 59
    iput-object v1, v0, Lcom/android/server/am/MARsTrigger;->mPolicyGameIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 60
    .line 61
    new-instance v1, Lcom/android/server/am/MARsTrigger$1;

    .line 62
    .line 63
    const/4 v2, 0x6

    .line 64
    invoke-direct {v1, v0, v2}, Lcom/android/server/am/MARsTrigger$1;-><init>(Lcom/android/server/am/MARsTrigger;I)V

    .line 65
    .line 66
    .line 67
    iput-object v1, v0, Lcom/android/server/am/MARsTrigger;->mTimeIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 68
    .line 69
    new-instance v1, Lcom/android/server/am/MARsTrigger$5;

    .line 70
    .line 71
    const/4 v2, 0x3

    .line 72
    invoke-direct {v1, v2}, Lcom/android/server/am/MARsTrigger$5;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iput-object v1, v0, Lcom/android/server/am/MARsTrigger;->mUserActionReceiver:Lcom/android/server/am/MARsTrigger$5;

    .line 76
    .line 77
    new-instance v1, Lcom/android/server/am/MARsTrigger$1;

    .line 78
    .line 79
    const/4 v2, 0x7

    .line 80
    invoke-direct {v1, v0, v2}, Lcom/android/server/am/MARsTrigger$1;-><init>(Lcom/android/server/am/MARsTrigger;I)V

    .line 81
    .line 82
    .line 83
    iput-object v1, v0, Lcom/android/server/am/MARsTrigger;->mUserIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 84
    .line 85
    new-instance v1, Lcom/android/server/am/MARsTrigger$5;

    .line 86
    .line 87
    const/4 v2, 0x1

    .line 88
    invoke-direct {v1, v2}, Lcom/android/server/am/MARsTrigger$5;-><init>(I)V

    .line 89
    .line 90
    .line 91
    iput-object v1, v0, Lcom/android/server/am/MARsTrigger;->mAppStartUpIntentReceiver:Lcom/android/server/am/MARsTrigger$5;

    .line 92
    .line 93
    new-instance v1, Lcom/android/server/am/MARsTrigger$1;

    .line 94
    .line 95
    const/4 v2, 0x1

    .line 96
    invoke-direct {v1, v0, v2}, Lcom/android/server/am/MARsTrigger$1;-><init>(Lcom/android/server/am/MARsTrigger;I)V

    .line 97
    .line 98
    .line 99
    iput-object v1, v0, Lcom/android/server/am/MARsTrigger;->mEmergencyStateChangedReceiver:Lcom/android/server/am/MARsTrigger$1;

    .line 100
    .line 101
    new-instance v1, Lcom/android/server/am/MARsTrigger$5;

    .line 102
    .line 103
    const/4 v2, 0x2

    .line 104
    invoke-direct {v1, v2}, Lcom/android/server/am/MARsTrigger$5;-><init>(I)V

    .line 105
    .line 106
    .line 107
    iput-object v1, v0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiver:Lcom/android/server/am/MARsTrigger$5;

    .line 108
    .line 109
    sput-object v0, Lcom/android/server/am/MARsTrigger$MARsTriggerHolder;->INSTANCE:Lcom/android/server/am/MARsTrigger;

    .line 110
    .line 111
    return-void
.end method
