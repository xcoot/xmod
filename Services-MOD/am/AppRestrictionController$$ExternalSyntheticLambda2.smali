.class public final synthetic Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;->f$0:I

    .line 6
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;->f$0:I

    .line 3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 5
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;->f$2:I

    .line 7
    check-cast p1, Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    .line 9
    invoke-interface {p1, v0, v1, p0}, Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;->onRestrictionLevelChanged(ILjava/lang/String;I)V

    .line 12
    return-void
.end method
