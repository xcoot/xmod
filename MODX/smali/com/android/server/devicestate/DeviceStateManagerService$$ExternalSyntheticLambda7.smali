.class public final synthetic Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicestate/DeviceStateManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 6
    iput p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda7;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 3
    iget p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda7;->f$1:I

    .line 5
    check-cast p1, Landroid/hardware/devicestate/DeviceState;

    .line 7
    iget-object v1, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mFoldedDeviceStates:Ljava/util/Set;

    .line 9
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 12
    move-result p1

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p1

    .line 17
    check-cast v1, Ljava/util/HashSet;

    .line 19
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 25
    iget-object p1, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mFoldedDeviceStates:Ljava/util/Set;

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p0

    .line 31
    check-cast p1, Ljava/util/HashSet;

    .line 33
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_0

    .line 39
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    :goto_0
    return p0
.end method
