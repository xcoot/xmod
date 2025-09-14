.class public final Lcom/android/server/locales/LocaleManagerService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$systemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/locales/SystemAppUpdateTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService$1;->val$systemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService$1;->val$systemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;

    .line 3
    iget-object v0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedAppsFile:Landroid/util/AtomicFile;

    .line 5
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedAppsFile:Landroid/util/AtomicFile;

    .line 19
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/locales/SystemAppUpdateTracker;->readFromXml(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :catch_0
    move-exception p0

    .line 33
    :try_start_1
    const-string v1, "SystemAppUpdateTracker"

    .line 35
    const-string/jumbo v2, "loadUpdatedSystemApps: Could not parse storage file "

    .line 38
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    goto :goto_0

    .line 42
    :goto_1
    return-void

    .line 43
    :goto_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 46
    throw p0
.end method
