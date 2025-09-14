.class public interface abstract Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static makeProxy(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/verify/domain/DomainVerificationCollector;Lcom/android/server/pm/DomainVerificationConnection;)Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    move-object v7, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v7, p0

    .line 23
    :goto_0
    if-eqz v7, :cond_1

    .line 24
    .line 25
    new-instance p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;

    .line 26
    .line 27
    move-object v2, p0

    .line 28
    move-object v3, p2

    .line 29
    move-object v4, p3

    .line 30
    move-object v5, p4

    .line 31
    move-object v6, p5

    .line 32
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;-><init>(Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/verify/domain/DomainVerificationCollector;Lcom/android/server/pm/DomainVerificationConnection;Landroid/content/ComponentName;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object p0, v0

    .line 37
    :goto_1
    if-eqz p1, :cond_2

    .line 38
    .line 39
    new-instance v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;

    .line 40
    .line 41
    invoke-direct {v0, p2, p5, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;-><init>(Landroid/content/Context;Lcom/android/server/pm/DomainVerificationConnection;Landroid/content/ComponentName;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    if-eqz p0, :cond_3

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    new-instance p1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;

    .line 49
    .line 50
    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;-><init>(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_3
    if-eqz p0, :cond_4

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_4
    if-eqz v0, :cond_5

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_5
    new-instance p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;

    .line 61
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    return-object p0
.end method


# virtual methods
.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public abstract isCallerVerifier(I)Z
.end method

.method public abstract runMessage(ILjava/lang/Object;)Z
.end method

.method public abstract sendBroadcastForPackages(Ljava/util/Set;)V
.end method
