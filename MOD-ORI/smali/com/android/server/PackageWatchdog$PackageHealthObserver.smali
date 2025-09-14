.class public interface abstract Lcom/android/server/PackageWatchdog$PackageHealthObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract execute(Landroid/content/pm/VersionedPackage;II)Z
.end method

.method public abstract executeBootLoopMitigation(I)Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract mayObservePackage(Ljava/lang/String;)Z
.end method

.method public abstract onBootLoop(I)I
.end method

.method public abstract onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I
.end method
