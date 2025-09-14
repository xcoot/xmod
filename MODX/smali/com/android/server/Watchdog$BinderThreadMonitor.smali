.class public final Lcom/android/server/Watchdog$BinderThreadMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# virtual methods
.method public final monitor()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Binder;->blockUntilThreadAvailable()V

    .line 4
    return-void
.end method
