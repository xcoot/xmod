.class public final Lcom/android/server/display/VirtualDisplayAdapter$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;


# virtual methods
.method public final createDisplay(Ljava/lang/String;ZLjava/lang/String;F)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/display/DisplayControl;->createVirtualDisplay(Ljava/lang/String;ZLjava/lang/String;F)Landroid/os/IBinder;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final destroyDisplay(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/display/DisplayControl;->destroyVirtualDisplay(Landroid/os/IBinder;)V

    .line 4
    return-void
.end method
