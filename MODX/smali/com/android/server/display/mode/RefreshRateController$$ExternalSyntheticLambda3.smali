.class public final synthetic Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILandroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda3;->f$0:Landroid/os/IBinder;

    .line 6
    iput p1, p0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda3;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda3;->f$0:Landroid/os/IBinder;

    .line 3
    iget p0, p0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda3;->f$1:I

    .line 5
    invoke-static {v0, p0}, Landroid/view/SurfaceControl;->notifyHFRmode(Landroid/os/IBinder;I)V

    .line 8
    return-void
.end method
