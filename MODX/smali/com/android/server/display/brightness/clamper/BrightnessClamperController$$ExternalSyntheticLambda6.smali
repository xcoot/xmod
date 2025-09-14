.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 6
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Runnable;

    .line 8
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Runnable;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 5
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mHandler:Landroid/os/Handler;

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    :cond_0
    return-void
.end method
