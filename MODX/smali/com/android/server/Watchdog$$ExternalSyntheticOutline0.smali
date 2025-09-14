.class public abstract synthetic Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/ServiceThread;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 9
    return-object v0
.end method
