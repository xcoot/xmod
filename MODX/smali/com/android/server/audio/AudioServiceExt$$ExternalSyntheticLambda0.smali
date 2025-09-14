.class public final synthetic Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioServiceExt;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioServiceExt;Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioServiceExt;

    .line 6
    iput-object p2, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 8
    iput p3, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/audio/AudioServiceExt;

    .line 3
    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 5
    iget p0, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;->f$2:I

    .line 7
    iget-object v0, v0, Lcom/android/server/audio/AudioServiceExt;->mDvfsHelper:Lcom/samsung/android/server/audio/DvfsHelper;

    .line 9
    iget-boolean v0, v0, Lcom/samsung/android/server/audio/DvfsHelper;->mIsScreenOn:Z

    .line 11
    invoke-static {v1, p0, v0}, Lcom/samsung/android/server/audio/utils/SoundAliveUtils;->notifyDVFSToSoundAlive(Landroid/content/Context;IZ)V

    .line 14
    return-void
.end method
