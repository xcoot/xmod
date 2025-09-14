.class public final synthetic Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpNotedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/LocationManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/LocationManagerService;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->isLocationEnabledForUser(I)Z

    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo p1, "location noteOp with location off - "

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-static {p2, p1, p3, p4}, Landroid/location/util/identity/CallerIdentity;->forTest(IILjava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    const-string p1, "LocationManagerService"

    .line 38
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method
