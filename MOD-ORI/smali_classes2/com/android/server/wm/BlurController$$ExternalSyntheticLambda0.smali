.class public final synthetic Lcom/android/server/wm/BlurController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BlurController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BlurController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/BlurController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/BlurController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onThermalStatusChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/BlurController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/BlurController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mCriticalThermalStatus:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
