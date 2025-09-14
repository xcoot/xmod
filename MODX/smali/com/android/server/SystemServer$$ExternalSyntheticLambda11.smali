.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IServiceCreator;


# virtual methods
.method public final createService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 0

    .line 1
    new-instance p0, Lcom/samsung/android/ssdid/SemSsdidManagerService;

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/ssdid/SemSsdidManagerService;-><init>(Landroid/content/Context;)V

    .line 6
    return-object p0
.end method
