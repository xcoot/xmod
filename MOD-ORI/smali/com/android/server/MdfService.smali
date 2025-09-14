.class public final Lcom/android/server/MdfService;
.super Lcom/samsung/android/security/mdf/MdfService/IMdfService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "initCCMode res = "

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/security/mdf/MdfService/IMdfService$Stub;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    .line 12
    .line 13
    const-string p0, "MdfService"

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string/jumbo p1, "mdfService is null"

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string/jumbo v1, "ro.security.mdf.ux"

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "Enabled"

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x1

    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->initCCMode()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_1
    const-string p1, "This device does not support the MDF"

    .line 72
    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final initCCMode()I
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/MdfService;->mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x2

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->initCCMode()I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    throw p0
.end method
