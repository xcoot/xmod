.class public final synthetic Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 5
    iput-object p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 8
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    sget-object v1, Landroid/sec/enterprise/proxy/EnterpriseProxyConstants;->LOCAL_ENTERPRISE_PROXY_WHITELIST:Ljava/util/List;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 31
    :try_start_0
    iget-object v3, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    const/16 v3, 0x80

    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_0

    .line 49
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 51
    if-nez v2, :cond_1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 56
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v2

    .line 65
    const-string v3, "LocalProxyManager"

    .line 67
    const-string v4, "Failed to get browser uid list"

    .line 69
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 79
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object p0

    .line 88
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_4

    .line 94
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Ljava/lang/String;

    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_3

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    const/4 v2, 0x0

    .line 108
    const/4 v3, 0x0

    .line 109
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateProxyInWifiConfig(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
