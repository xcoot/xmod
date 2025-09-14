.class public final synthetic Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/TelephonyRegistry;

.field public final synthetic f$1:Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/TelephonyRegistry;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/TelephonyRegistry;

    .line 5
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/TelephonyRegistry;

    .line 8
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    .line 10
    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 12
    invoke-static {v0, p0}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    .line 15
    move-result-object p0

    .line 16
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    .line 18
    if-ne p0, v0, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/TelephonyRegistry;

    .line 30
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    .line 32
    iget-object v0, v0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {v0, p0}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    .line 37
    move-result-object p0

    .line 38
    sget-object v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    .line 40
    if-ne p0, v0, :cond_1

    .line 42
    const/4 p0, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
