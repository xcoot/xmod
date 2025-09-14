.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mModelId:I

.field public final mUuid:Ljava/lang/String;

.field public mWasContended:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mWasContended:Z

    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mModelId:I

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mUuid:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method
