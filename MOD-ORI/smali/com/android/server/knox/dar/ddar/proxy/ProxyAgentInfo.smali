.class public final Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCompName:Landroid/content/ComponentName;

.field public final mName:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    :try_start_0
    check-cast p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    .line 21
    .line 22
    iget v3, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    .line 23
    .line 24
    if-ne v2, v3, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v0, v1

    .line 48
    :goto_0
    return v0

    .line 49
    :goto_1
    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :cond_2
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    .line 10
    .line 11
    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "ProxyAgentInfo {mName:%s mCompName:%s mUserId:%d}"

    .line 16
    .line 17
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
