.class public final Lcom/android/server/pm/MovePackageHelper$SdcardParams;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final callingUid:I

.field public final moveId:I

.field public final packageName:Ljava/lang/String;

.field public final user:Landroid/os/UserHandle;

.field public final volumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->volumeUuid:Ljava/lang/String;

    .line 7
    .line 8
    iput p1, p0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->callingUid:I

    .line 9
    .line 10
    iput-object p3, p0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->user:Landroid/os/UserHandle;

    .line 11
    .line 12
    iput p2, p0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->moveId:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SdcardParams{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " PackageName= "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " Volume= "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->volumeUuid:Ljava/lang/String;

    .line 35
    .line 36
    const-string/jumbo v1, "}"

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
