.class public final synthetic Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/DropBoxManagerInternal$EntrySource;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueue;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueue;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BroadcastQueue;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final writeTo(Ljava/io/FileDescriptor;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BroadcastQueue;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v7, Ljava/io/FileOutputStream;

    .line 10
    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 13
    :try_start_0
    new-instance p1, Ljava/io/PrintWriter;

    .line 15
    invoke-direct {p1, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    const-string v1, "Message: "

    .line 20
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    move-object v1, p1

    .line 32
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->dumpLocked(Ljava/io/PrintWriter;ZZZLjava/lang/String;Z)Z

    .line 35
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    :try_start_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 51
    goto :goto_0

    .line 52
    :catchall_2
    move-exception p1

    .line 53
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 56
    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    :goto_1
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 60
    goto :goto_2

    .line 61
    :catchall_3
    move-exception p1

    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    :goto_2
    throw p0
.end method
