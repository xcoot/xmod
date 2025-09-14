.class public final synthetic Lcom/android/server/am/ActivityManagerShellCommand$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/pm/SharedLibraryInfo;

    .line 3
    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
