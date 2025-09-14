.class Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mClientName:Ljava/lang/String;

.field private mCustomAppName:Ljava/lang/String;

.field private mCustomAppPackageName:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSkipPin:Z

.field private mSkipSupport:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mClientName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mMessage:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mPhoneNumber:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mEmailAddress:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipPin:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipSupport:Z

    .line 15
    .line 16
    invoke-virtual {p0, p7}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->setBundle(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final getBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "customer_package_name"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppPackageName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "customer_app_name"

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final getClientName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mClientName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEmailAddress()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mEmailAddress:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mPhoneNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSkipPin()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipPin:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSkipSupport()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipSupport:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppPackageName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppName:Ljava/lang/String;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string v1, "customer_package_name"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppPackageName:Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppPackageName:Ljava/lang/String;

    .line 25
    .line 26
    :goto_0
    const-string v1, "customer_app_name"

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppName:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mCustomAppName:Ljava/lang/String;

    .line 42
    .line 43
    :goto_1
    return-void
.end method

.method public final setClientName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mClientName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setEmailAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mEmailAddress:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mPhoneNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSkipPin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipPin:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSkipSupport(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;->mSkipSupport:Z

    .line 2
    .line 3
    return-void
.end method
