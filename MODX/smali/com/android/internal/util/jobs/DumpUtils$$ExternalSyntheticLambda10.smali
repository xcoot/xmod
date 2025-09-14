.class public final synthetic Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda10;->f$0:I

    .line 6
    iput-object p2, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda10;->f$0:I

    .line 3
    iget-object p0, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    .line 5
    check-cast p1, Landroid/content/ComponentName$WithComponentName;

    .line 7
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/jobs/DumpUtils;->$r8$lambda$7L2IuHmi6ElsEnVZijGH47KxIzk(ILjava/lang/String;Landroid/content/ComponentName$WithComponentName;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method
