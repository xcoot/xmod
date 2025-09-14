.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Ljava/io/PrintWriter;

.field public final synthetic f$2:Ljava/io/FileDescriptor;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:[Z


# direct methods
.method public synthetic constructor <init>([ZLjava/io/PrintWriter;Ljava/io/FileDescriptor;ZZLjava/lang/String;[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$0:[Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$1:Ljava/io/PrintWriter;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$2:Ljava/io/FileDescriptor;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$3:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$4:Z

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$6:[Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$0:[Z

    .line 2
    .line 3
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$1:Ljava/io/PrintWriter;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$2:Ljava/io/FileDescriptor;

    .line 6
    .line 7
    iget-boolean v5, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$3:Z

    .line 8
    .line 9
    iget-boolean v6, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$4:Z

    .line 10
    .line 11
    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$5:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$6:[Z

    .line 14
    .line 15
    move-object v1, p1

    .line 16
    check-cast v1, Lcom/android/server/wm/Task;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    aget-boolean v2, v0, p1

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 24
    .line 25
    .line 26
    :cond_0
    const-string v2, "  "

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/TaskFragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    aput-boolean v1, v0, p1

    .line 34
    .line 35
    aget-boolean v0, p0, p1

    .line 36
    .line 37
    or-int/2addr v0, v1

    .line 38
    aput-boolean v0, p0, p1

    .line 39
    .line 40
    return-void
.end method
