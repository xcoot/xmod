.class public final Lcom/android/internal/util/jobs/DumpUtils$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$dump:Lcom/android/internal/util/jobs/DumpUtils$Dump;

.field public final synthetic val$prefix:Ljava/lang/String;

.field public final synthetic val$sw:Ljava/io/StringWriter;


# direct methods
.method public constructor <init>(Ljava/io/StringWriter;Lcom/android/internal/util/jobs/DumpUtils$Dump;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$sw:Ljava/io/StringWriter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$dump:Lcom/android/internal/util/jobs/DumpUtils$Dump;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$prefix:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/internal/util/jobs/FastPrintWriter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$sw:Ljava/io/StringWriter;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$dump:Lcom/android/internal/util/jobs/DumpUtils$Dump;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$prefix:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {v1, v0, p0}, Lcom/android/internal/util/jobs/DumpUtils$Dump;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/internal/util/jobs/FastPrintWriter;->close()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
