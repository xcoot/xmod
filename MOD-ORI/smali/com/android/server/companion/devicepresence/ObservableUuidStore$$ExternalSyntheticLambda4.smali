.class public final synthetic Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/devicepresence/ObservableUuid;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/devicepresence/ObservableUuid;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/companion/devicepresence/ObservableUuid;->mPackageName:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/ObservableUuid;->mPackageName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method
