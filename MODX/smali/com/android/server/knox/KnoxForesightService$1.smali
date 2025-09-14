.class public final Lcom/android/server/knox/KnoxForesightService$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/KnoxForesightService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/KnoxForesightService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/KnoxForesightService$1;->this$0:Lcom/android/server/knox/KnoxForesightService;

    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "systemclassloader : "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "KnoxForesightService"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 32
    move-result-object v0

    .line 33
    const-string/jumbo v1, "com.samsung.android.knox.foresight.framework.system.SystemServiceEntry"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 39
    move-result-object v0

    .line 40
    const-string/jumbo v1, "initialize"

    .line 43
    const/4 v2, 0x1

    .line 44
    new-array v2, v2, [Ljava/lang/Class;

    .line 46
    const-class v3, Landroid/content/Context;

    .line 48
    const/4 v4, 0x0

    .line 49
    aput-object v3, v2, v4

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    move-result-object v0

    .line 55
    iget-object p0, p0, Lcom/android/server/knox/KnoxForesightService$1;->this$0:Lcom/android/server/knox/KnoxForesightService;

    .line 57
    iget-object p0, p0, Lcom/android/server/knox/KnoxForesightService;->mContext:Landroid/content/Context;

    .line 59
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 62
    move-result-object p0

    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_4

    .line 68
    :catch_0
    move-exception p0

    .line 69
    goto :goto_0

    .line 70
    :catch_1
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :catch_2
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :catch_3
    move-exception p0

    .line 75
    goto :goto_3

    .line 76
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    goto :goto_4

    .line 80
    :goto_1
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 83
    goto :goto_4

    .line 84
    :goto_2
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 87
    goto :goto_4

    .line 88
    :goto_3
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 91
    :goto_4
    return-void
.end method
