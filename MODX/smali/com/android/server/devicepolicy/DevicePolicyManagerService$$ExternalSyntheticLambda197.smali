.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda197;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/app/AppOpsManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:[I

.field public final synthetic f$4:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AppOpsManager;ILjava/lang/String;[ILandroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda197;->f$0:Landroid/app/AppOpsManager;

    .line 6
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda197;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda197;->f$2:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda197;->f$3:[I

    .line 12
    iput-object p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda197;->f$4:Landroid/content/pm/ApplicationInfo;

    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda197;->f$0:Landroid/app/AppOpsManager;

    .line 3
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda197;->f$1:I

    .line 5
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda197;->f$2:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda197;->f$3:[I

    .line 9
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda197;->f$4:Landroid/content/pm/ApplicationInfo;

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 13
    check-cast p2, Ljava/lang/String;

    .line 15
    invoke-virtual {v0, p2, v1, v2}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 18
    move-result v4

    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v5

    .line 23
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 26
    move-result v3

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz v3, :cond_0

    .line 30
    move v3, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v3, 0x3

    .line 33
    :goto_0
    if-eq v4, v3, :cond_1

    .line 35
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/app/AppOpsManager;->setMode(Ljava/lang/String;ILjava/lang/String;I)V

    .line 38
    invoke-static {}, Landroid/app/admin/flags/Flags;->powerExemptionBgUsageFix()Z

    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result p1

    .line 48
    const/4 p2, 0x4

    .line 49
    if-ne p1, p2, :cond_1

    .line 51
    if-nez v3, :cond_1

    .line 53
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 55
    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 57
    const/16 v1, 0x46

    .line 59
    invoke-virtual {v0, v1, p1, p2, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 62
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 64
    const/16 p2, 0x1a

    .line 66
    if-ge p1, p2, :cond_1

    .line 68
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 70
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 72
    const/16 p2, 0x3f

    .line 74
    invoke-virtual {v0, p2, p1, p0, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 77
    :cond_1
    return-void
.end method
