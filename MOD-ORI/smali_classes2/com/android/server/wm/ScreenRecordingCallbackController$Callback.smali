.class public final Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Landroid/window/IScreenRecordingCallback;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenRecordingCallbackController;Landroid/window/IScreenRecordingCallback;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mCallback:Landroid/window/IScreenRecordingCallback;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mCallback:Landroid/window/IScreenRecordingCallback;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ScreenRecordingCallbackController;->unregister(Landroid/window/IScreenRecordingCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
