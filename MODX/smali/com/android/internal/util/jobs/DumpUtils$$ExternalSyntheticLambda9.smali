.class public final synthetic Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda9;->f$0:Landroid/content/ComponentName;

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda9;->f$0:Landroid/content/ComponentName;

    .line 3
    check-cast p1, Landroid/content/ComponentName$WithComponentName;

    .line 5
    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/DumpUtils;->$r8$lambda$WK57pgle_yxeN7VzFLE0xvhrYrs(Landroid/content/ComponentName;Landroid/content/ComponentName$WithComponentName;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method
