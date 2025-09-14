.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda157;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda157;->f$0:Landroid/app/AppOpsManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda157;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda157;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda157;->f$3:[I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda157;->f$4:Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda157;->f$0:Landroid/app/AppOpsManager;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda157;->f$1:I

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda157;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda157;->f$3:[I

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda157;->f$4:Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    sget-object p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->APPLICATION_EXEMPTION_CONSTANTS_TO_APP_OPS:Ljava/util/Map;

    .line 12
    .line 13
    new-instance v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda197;

    .line 14
    .line 15
    move-object v0, v6

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda197;-><init>(Landroid/app/AppOpsManager;ILjava/lang/String;[ILandroid/content/pm/ApplicationInfo;)V

    .line 17
    .line 18
    .line 19
    check-cast p0, Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {p0, v6}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
