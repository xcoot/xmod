.class public final synthetic Lcom/android/server/wm/InputMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InputMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/InputMonitor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/InputMonitor;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerService;->onDisplayRemoved(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
