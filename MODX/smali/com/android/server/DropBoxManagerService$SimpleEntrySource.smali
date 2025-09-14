.class public final Lcom/android/server/DropBoxManagerService$SimpleEntrySource;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/DropBoxManagerInternal$EntrySource;


# instance fields
.field public final forceCompress:Z

.field public final in:Ljava/io/InputStream;

.field public final length:J


# direct methods
.method public constructor <init>(JLjava/io/InputStream;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->in:Ljava/io/InputStream;

    .line 6
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->length:J

    .line 8
    iput-boolean p4, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->forceCompress:Z

    .line 10
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->in:Ljava/io/InputStream;

    .line 3
    invoke-static {p0}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 6
    return-void
.end method

.method public final length()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->length:J

    .line 3
    return-wide v0
.end method

.method public final writeTo(Ljava/io/FileDescriptor;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->forceCompress:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    .line 7
    new-instance v1, Ljava/io/FileOutputStream;

    .line 9
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 12
    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 15
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->in:Ljava/io/InputStream;

    .line 17
    invoke-static {p0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 20
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->in:Ljava/io/InputStream;

    .line 26
    new-instance v0, Ljava/io/FileOutputStream;

    .line 28
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 31
    invoke-static {p0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 34
    :goto_0
    return-void
.end method
