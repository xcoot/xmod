.class public final synthetic Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda5;->f$0:Landroid/util/ArrayMap;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda5;->f$0:Landroid/util/ArrayMap;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    .line 4
    .line 5
    check-cast p2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/apex/ApexInfo;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/apex/ApexInfo;

    .line 22
    .line 23
    iget-boolean p0, p0, Landroid/apex/ApexInfo;->isFactory:Z

    .line 24
    .line 25
    iget-boolean p1, p1, Landroid/apex/ApexInfo;->isFactory:Z

    .line 26
    .line 27
    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method
