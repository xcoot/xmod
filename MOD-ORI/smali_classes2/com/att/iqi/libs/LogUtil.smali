.class public Lcom/att/iqi/libs/LogUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "IQIConcierge"

.field private static sDebug:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static canLog()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    .line 2
    .line 3
    return v0
.end method

.method public static enableLogging(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    .line 2
    .line 3
    return-void
.end method

.method public static logd(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static logw(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
