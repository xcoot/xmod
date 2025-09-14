.class public final synthetic Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/NetworkFactoryLegacyImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/net/NetworkFactoryLegacyImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda1;->f$0:Landroid/net/NetworkFactoryLegacyImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda1;->f$0:Landroid/net/NetworkFactoryLegacyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkFactoryLegacyImpl;->evalRequests()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
