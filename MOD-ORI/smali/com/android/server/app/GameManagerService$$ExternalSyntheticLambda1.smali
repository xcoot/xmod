.class public final synthetic Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    sget p0, Lcom/android/server/app/GameManagerService;->$r8$clinit:I

    .line 4
    .line 5
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method
