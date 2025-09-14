.class public final synthetic Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;->f$0:Landroid/util/IndentingPrintWriter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;->f$0:Landroid/util/IndentingPrintWriter;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "PackageStats{"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v0, p1, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->userId:I

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 16
    .line 17
    .line 18
    const-string v0, "-"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p1, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->packageName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v0, p1, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "#runEJ"

    .line 35
    .line 36
    invoke-virtual {p0, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 37
    .line 38
    .line 39
    iget v0, p1, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "#runReg"

    .line 46
    .line 47
    invoke-virtual {p0, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 48
    .line 49
    .line 50
    iget v0, p1, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "#stagedEJ"

    .line 57
    .line 58
    invoke-virtual {p0, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 59
    .line 60
    .line 61
    iget p1, p1, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v0, "#stagedReg"

    .line 68
    .line 69
    invoke-virtual {p0, v0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 70
    .line 71
    .line 72
    const-string/jumbo p1, "}"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
