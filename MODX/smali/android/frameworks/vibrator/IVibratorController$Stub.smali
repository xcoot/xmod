.class public abstract Landroid/frameworks/vibrator/IVibratorController$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/frameworks/vibrator/IVibratorController;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/frameworks/vibrator/IVibratorController;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Landroid/frameworks/vibrator/IVibratorController;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Landroid/frameworks/vibrator/IVibratorController;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Landroid/frameworks/vibrator/IVibratorController;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p0, v0, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    return-object v0
.end method
