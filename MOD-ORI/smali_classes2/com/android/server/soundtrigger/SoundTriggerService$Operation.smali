.class public final Lcom/android/server/soundtrigger/SoundTriggerService$Operation;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDropOp:Ljava/lang/Runnable;

.field public final mExecuteOp:Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;

.field public final mSetupOp:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;Lcom/android/server/soundtrigger/SoundTriggerService$SoundTriggerSessionStub$RemoteSoundTriggerDetectionService$$ExternalSyntheticLambda2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->mSetupOp:Ljava/lang/Runnable;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->mExecuteOp:Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->mDropOp:Ljava/lang/Runnable;

    .line 9
    .line 10
    return-void
.end method
