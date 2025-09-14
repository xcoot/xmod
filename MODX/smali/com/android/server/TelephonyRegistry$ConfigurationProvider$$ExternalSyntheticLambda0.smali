.class public final synthetic Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p3, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 8
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    .line 10
    const-wide/32 v1, 0xaeae033

    .line 13
    invoke-static {v1, v2, v0, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 24
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    .line 26
    const-wide/32 v1, 0xafc8f5e

    .line 29
    invoke-static {v1, v2, v0, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 32
    move-result p0

    .line 33
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 40
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    .line 42
    const-wide/32 v1, 0x95f3323

    .line 45
    invoke-static {v1, v2, v0, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 48
    move-result p0

    .line 49
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 56
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    .line 58
    const-wide/32 v1, 0xad3e56b

    .line 61
    invoke-static {v1, v2, v0, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 64
    move-result p0

    .line 65
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 72
    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    .line 74
    const-wide/32 v1, 0xae06792

    .line 77
    invoke-static {v1, v2, v0, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 80
    move-result p0

    .line 81
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
