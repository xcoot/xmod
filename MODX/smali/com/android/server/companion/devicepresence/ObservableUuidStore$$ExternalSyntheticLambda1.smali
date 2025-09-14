.class public final synthetic Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/os/ParcelUuid;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda1;->f$1:Landroid/os/ParcelUuid;

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 3
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda1;->f$1:Landroid/os/ParcelUuid;

    .line 5
    check-cast p1, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 7
    iget-object v1, p1, Lcom/android/server/companion/devicepresence/ObservableUuid;->mPackageName:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object p1, p1, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    .line 17
    invoke-virtual {p1, p0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method
