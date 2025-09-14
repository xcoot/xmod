.class public final synthetic Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand;

.field public final synthetic f$1:Ljava/util/zip/ZipOutputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand;Ljava/util/zip/ZipOutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand$$ExternalSyntheticLambda0;->f$1:Ljava/util/zip/ZipOutputStream;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand$$ExternalSyntheticLambda0;->f$1:Ljava/util/zip/ZipOutputStream;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    check-cast p2, Ljava/io/InputStream;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "FS"

    .line 13
    .line 14
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipEntry;

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v2, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LauncherAppsShellCommand;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 35
    .line 36
    sget v2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->$r8$clinit:I

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/io/DataInputStream;

    .line 42
    .line 43
    invoke-direct {v1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    .line 45
    .line 46
    new-instance p2, Lcom/android/internal/util/SizedInputStream;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    int-to-long v2, v2

    .line 53
    invoke-direct {p2, v1, v2, v3}, Lcom/android/internal/util/SizedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p0}, Lcom/android/internal/util/SizedInputStream;->transferTo(Ljava/io/OutputStream;)J

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const-string v0, "Failed to output "

    .line 69
    .line 70
    const-string v1, " data to shell: "

    .line 71
    .line 72
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void
.end method
