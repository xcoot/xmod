.class public final synthetic Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/jobs/DumpUtils$KeyDumper;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    .line 6
    iput-object p2, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final dump(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    .line 3
    iget-object p0, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 5
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->$r8$lambda$xV6YgEaWJX4rlq6RkXJi5BssYRs(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 8
    return-void
.end method
