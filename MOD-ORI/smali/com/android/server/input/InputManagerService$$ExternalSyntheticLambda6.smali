.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/InputManagerService;

.field public final synthetic f$1:Landroid/view/InputChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/input/InputManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;->f$1:Landroid/view/InputChannel;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/input/InputManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda6;->f$1:Landroid/view/InputChannel;

    .line 4
    .line 5
    sget-boolean v1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerService;->lambda$createSpyWindowGestureMonitor$0(Landroid/view/InputChannel;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
